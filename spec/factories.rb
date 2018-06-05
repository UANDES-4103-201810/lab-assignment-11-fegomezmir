FactoryBot.define do
factory :User do
username "felipe"
email "fagomez1@gmail.com"
password "asdasd123"

end

factory :Message do
user_id 1
date "06/06/2018"
content "Hola"
end


end
