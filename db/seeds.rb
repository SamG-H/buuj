# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
users = User.create!([{ name: 'sam', password: 'sam'},
                      { name: 'maitland', password: 'maitland'},
                      { name: 'bean', password: 'bean' }])

logs = Log.create!([{ kind: 'month', user: users.first},
                    { kind: 'month', user: users.second},
                    { kind: 'month', user: users.third},
                    { kind: 'day', user: users.first},
                    { kind: 'day', user: users.second},
                    { kind: 'day', user: users.third}])
logs.each do |l|
  Bullet.create!([{ body: 'Create icon', kind: 'task', log: l},
                 { body: 'Fix sign in page', kind: 'task', log: l},
                 { body: 'Add google sign up', kind: 'task', log: l}])
end
