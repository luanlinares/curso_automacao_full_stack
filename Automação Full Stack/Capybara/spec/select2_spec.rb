describe 'Select 2', :select2 do 
  
  describe('Single', :single) do
    before(:each) do
      visit '/apps/select2/single.html'
    end

    it 'seleciona ator por nome' do
      find('.select2-selection--single').click
      sleep 1
      find('.select2-results__option', text: 'Adam Sandler').click
      sleep 3
    end

    it 'seleciona usando a busca' do
      find('.select2-selection--single').click
      sleep 1
      find('.select2-search__field').set 'Chris Rock'
      sleep 1
      find('.select2-results__option').click
      sleep 3
    end
  end


  describe('Multiole') do
    before(:each) do
      visit '/apps/select2/single.html'
    end
  end

end