require 'rails_helper'

RSpec.describe Job, type: :model do
  before do
    @job = FactoryBot.build(:job)
  end
  describe '求人投稿' do
    context 'メッセージが投稿できる場合' do
      it 'shop_nameとoccupation_idとsalaryとticket_idとdomitory_idとphone_numberとtextが存在していれば保存できる' do
        expect(@job).to be_valid
      end
    end
    context '求人が投稿できない場合' do
      it 'shop_nameが空では保存できない' do
        @job.shop_name = ''
        @job.valid?
        expect(@job.errors.full_messages).to include("店名/場所名を入力してください")
      end
      it 'occupation_idが1空では保存できない' do
        @job.occupation_id = '1'
        @job.valid?
        expect(@job.errors.full_messages).to include("職種 を入力してください")
      end
      it 'salaryが空では保存できない' do
        @job.salary = ''
        @job.valid?
        expect(@job.errors.full_messages).to include("時給金額を入力してください")
      end
      it 'ticket_idが1では保存できない' do
        @job.ticket_id = '1'
        @job.valid?
        expect(@job.errors.full_messages).to include("リフト券貸し出し を入力してください")
      end
      it 'domitory_idが1では保存できない' do
        @job.domitory_id = '1'
        @job.valid?
        expect(@job.errors.full_messages).to include("従業員寮 を入力してください")
      end
      it 'phone_numberが空では保存できない' do
        @job.phone_number = ''
        @job.valid?
        expect(@job.errors.full_messages).to include("電話番号を入力してください")
      end
      it 'textが空では保存できない' do
        @job.text = ''
        @job.valid?
        expect(@job.errors.full_messages).to include("その他を入力してください")
      end
      it 'userが紐付いていないと保存できない' do
        @job.user = nil
        @job.valid?
        expect(@job.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end