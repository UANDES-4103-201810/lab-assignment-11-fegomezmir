FactoryBot.define do


factory :user do
username "felipe"
email "fagomez1@gmail.com"
password "asdasd123"

end

factory :message do
User_id 1
date "06/06/2018"
content "Hola"
end


end
