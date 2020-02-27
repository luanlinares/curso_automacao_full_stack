describe 'IDs Dinâmicos', :ids_dinamicos do
  before(:each) do
    visit 'access'
  end

  it 'cadastro' do
    find('input[id$=UsernameInput]').set 'Luan' #$ - Termina com
    find('input[id^=PasswordInput]').set '123456' #^- Começa com
    find('a[id*=GetStartedButton]').click # * - Contém

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    sleep  3
  end
end