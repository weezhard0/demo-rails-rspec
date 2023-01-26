require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe '#show_mood' do
    context 'when is happy' do
      before do
        allow(helper).to receive(:happy?).and_return(true)
      end

      it { expect(helper.show_mood).to eq('Happy') }
    end

    context 'when is not happy' do
      before do
        allow(helper).to receive(:happy?).and_return(false)
      end

      it { expect(helper.show_mood).to eq('Sad') }
    end
  end
end
