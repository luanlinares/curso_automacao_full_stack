describe 'Upload', :upload do
  before(:each) do 
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
      @texto = Dir.pwd + '/spec/fixtures/teste.txt'
      @imagem = Dir.pwd + '/spec/fixtures/teste_img.png'
  end

  it 'Upload com arquivo texto' do
    attach_file('file-upload', @texto)
    click_button 'Upload'

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'teste.txt'
  end

  it 'Upload com arquivo de imagem' do
    attach_file('file-upload', @imagem)
    click_button 'Upload'

    div_imagem = find('#new-image')
    expect(div_imagem[:src]).to include '/uploads/teste_img.png'
  end

  after(:each) do
  end
end