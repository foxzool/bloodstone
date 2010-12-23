Factory.define :admin, :class => User do |u|
  u.username 'admin'
  u.email    'admin@zool.it'
  u.password '123456'
  u.roles    ['admin']
end
