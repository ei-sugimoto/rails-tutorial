require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'create' do
    context 'model of task test' do
      it 'create' do
        task = described_class.new(name: 'task1', details: 'details1')
        expect(task).to be_valid
      end
    end
  end
end
