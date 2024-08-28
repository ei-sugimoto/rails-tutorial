require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'create' do
    let(:task) { create(:task) }

    context 'when name is not present' do
      it 'is invalid' do
        expect(task).to be_valid
      end
    end
  end
end
