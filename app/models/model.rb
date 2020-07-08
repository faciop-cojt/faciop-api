class Model < ApplicationRecord
  mount_uploader :data, ModelDataUploader
end
