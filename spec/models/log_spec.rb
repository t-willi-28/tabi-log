require 'rails_helper'

RSpec.describe Log, type: :model do
  before do
    @log = FactoryBot.build(:log)
    @log.image = fixture_file_upload('app/assets/images/sample.jpg')
  end

  describe 'logを投稿する' do
    context '投稿できるとき' do
      it '正しく入力すれば投稿できる' do
        expect(@log).to be_valid
      end
    end

    context '投稿できない時' do
      it '画像が添付されていないと投稿できない' do
        @log.image = nil
        @log.valid?
        expect(@log.errors.full_messages).to include("Image can't be blank")
      end

      it 'placeが空だと投稿できない' do
        @log.place = ''
        @log.valid?
        expect(@log.errors.full_messages).to include("Place can't be blank")
      end

      it 'descriptionが空だと投稿できない' do
        @log.description = ''
        @log.valid?
        expect(@log.errors.full_messages).to include("Description can't be blank")
      end

      it 'pointが空だと投稿できない' do
        @log.point = ''
        @log.valid?
        expect(@log.errors.full_messages).to include("Point can't be blank")
      end
    end
  end
end
