describe "login_test", :depth => 'shallow' do
    let(:page_invalid) { @formula_lab.using('login_page').with_first('invalid').mix }
 
    it 'with invalid credentials', :depth => 'shallow' do
        page_invalid.login
        page_invalid.error?.should be_true
    end
end
