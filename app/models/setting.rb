class Setting < ActiveRecord::Base
  class SettingNotFound < RuntimeError; end

  cattr_accessor :defaults
  @@defaults = {}.with_indifferent_access

  #get or set a variable with the variable as the called method
  def self.method_missing(method, *args)
    method_name = method.to_s
    super(method, *args)

  rescue NoMethodError
    #set a value for a variable
    if method_name =~ /=$/
      var_name = method_name.gsub('=', '')
      value = args.first
      self[var_name] = value

      #retrieve a value
    else
      self[method_name]

    end
  end

  #destroy the specified settings record
  def self.destroy(var_name)
    var_name = var_name.to_s
    if self[var_name]
      object(var_name).destroy
      true
    else
      raise SettingNotFound, "Setting variable \"#{var_name}\" not found"
    end
  end

  #retrieve all settings as a hash
  def self.all
    vars = find(:all, :select => 'var, value')

    result = {}
    vars.each do |record|
      result[record.var] = record.value
    end
    result.with_indifferent_access
  end

  #retrieve a setting value by [] notation
  def self.[](var_name)
    if var_value = object(var_name)
      var_value
    elsif @@defaults[var_name.to_s]
      @@defaults[var_name.to_s]
    else
      nil
    end
  end

  #set a setting value by [] notation
  def self.[]=(var_name, value)
    var_name = var_name.to_s

    record = object(var_name) || Setting.new(:var => var_name)
    record.value = value
    record.save
  end

  #retrieve the actual Setting record
  def self.object(var_name)
    var_name = var_name.to_s
    getvalue = Rails.cache.read(var_name)
    unless getvalue
      getvalue =  Setting.find_by_var(var_name).value
      Rails.cache.write(var_name, getvalue)
    end
    return getvalue
  end

  #get the value field, YAML decoded
  def value
    YAML::load(self[:value])
  end

  #set the value field, YAML encoded
  def value=(new_value)
    self[:value] = new_value.to_yaml
  end

  
  #确保配置默认值
  def self.ensure_configs
    #网站标题
    Setting.title ||= 'ZoOL => Blog'

    #网站描述
    Setting.description ||= 'rails开发相关'

    #关键字
    Setting.keywords ||= 'rails,ruby,git,ubuntu,gem,bloodstone'

    #网站地址
    Setting.site_url ||= 'http://blog.zool.it'

    #作者
    Setting.author ||= 'ZoOL'

    #google分析
    Setting.google_analytics ||= 'UA-XXXXX-X'

    #disqus
    Setting.disqus_shortname ||= 'zoolblog'
    
    #redis配置
    Setting.redis_config ||= 'redis://localhost:/6379/bloodstone'

    return true
  end




end

# == Schema Information
#
# Table name: settings
#
#  id         :integer(4)      not null, primary key
#  var        :string(255)     not null
#  value      :text            default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

