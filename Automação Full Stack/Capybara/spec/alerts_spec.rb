describe 'Alertas de JavaScript', :alerts do
  before(:each) do
    visit '/javascript_alerts'
  end

  it 'alerta' do
    click_button 'Alerta'
    msg = page.driver.browser.switch_to.alert.text
    puts msg
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 3
  end 

  it 'sim confirma' do
    click_button 'Confirma'
    sleep 2
    #Verificando a mensagem
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    #Clicando para Confirmar
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
    sleep 3
  end 

  it 'não confirma' do
    click_button 'Confirma'
    sleep 2
    #Verificando a mensagem
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    #Clicando para NÃO Confirmar
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
    sleep 3
  end 

  it 'accept prompt', :accept_prompt do
    accept_prompt(with: 'Luan') do
      click_button 'Prompt'
      sleep 2
    end
    expect(page).to have_content 'Olá, Luan'
    sleep 3
  end 

  it 'dismiss prompt', :dismiss_prompt do
    dismiss_prompt(with: 'Luan') do
      click_button 'Prompt'
      sleep 2
    end
    expect(page).to have_content 'Olá, null'
    sleep 3
  end 
end