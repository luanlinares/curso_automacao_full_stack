describe 'Caixas de Seleção', :checkbox do 
  before(:each) do 
    visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
  end

  it 'Marcando uma opção' do
    check('thor')
  end

  it 'Desmarcando uma opção' do 
    uncheck('antman')
  end 

  it 'Marcando com find set true' do
    find('input[value=cap]').set(true)
  end

  it 'Desmarcabdi com find set false' do
    find('input[value=guardians]').set(false)
  end


  after(:each) do
    sleep 3
  end
end