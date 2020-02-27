describe 'iframes' do
  describe 'Bom', :nice_iframe do
    before (:each) do
      visit '/nice_iframe'
    end

    it 'adicionar ao carrinho' do
      within_frame('burgerId') do
        refri = find('.menu-item-info-box', text: 'REFRIGERANTE')
        refri.find('a').click
        expect(find('#cart')).to have_content 'R$ 4,50'
        sleep 4
      end
    end
  end

  describe 'Ruim', :bad_iframe do
    before (:each) do
      visit '/bad_iframe'
    end

    it 'validar carrinho vazio' do
      
      script = '$(".box-iframe").attr("id", "tempId");'
      page.execute_script(script)
      
      within_frame('tempId') do
        expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
        sleep 4
      end
    end
  end
end