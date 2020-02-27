describe 'Botões de radio', :radio do
  before(:each) do 
    visit 'https://training-wheels-protocol.herokuapp.com/radios'
  end

  it 'selecao por ID' do
    choose('cap')
  end

  it 'selecao por CSS' do
    find('input[value=guardians]').click
  end

  after(:each) do
    sleep 3
  end
end