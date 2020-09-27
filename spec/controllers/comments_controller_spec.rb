# require 'rails_helper'

# RSpec.describe CommentsController, type: :controller do

#     describe '#create' do

#         let(:params) do
#             {
#                 comment: {
#                     user_id: 25, post_id: 78, comment: 'Super'
#                 }
#             }
#         end
#         subject { post :create, params: params }
#         it 'should create comment' do
#             expect { subject }.to change { Comment.count }.by(1)
#         end
#     end
# end