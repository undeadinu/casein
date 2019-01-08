require 'spec_helper'
require 'rspec/rails'

describe Casein::CaseinController, type: :controller do
  describe '#sort_order' do
    before do
      allow(subject).to receive(:params).and_return(params)
    end

    context 'overwrite default sorting' do
      let(:params) do
        { c: 'order', d: 'down' }
      end

      it 'returns hash with column and direction' do
        sorting = subject.send(:sort_order, 'order')

        expect(sorting).to be_a(Hash)
        expect(sorting).to have_key('order')
        expect(sorting['order']).to eq('DESC')
      end
    end

    context 'fallback to default sorting' do
      let(:params) { {} }

      it 'returns default sorting with ASC direction' do
        sorting = subject.send(:sort_order, 'id')

        expect(sorting).to have_key('id')
        expect(sorting['id']).to eq('ASC')
      end
    end
  end
end
