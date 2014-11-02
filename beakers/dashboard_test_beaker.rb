describe "dashboard_test", :depth => 'shallow' do 
	let(:page_dashboard) { @formula_lab.using('dashboard_page').with_first('farmer').mix }

	it 'as farmer' do
		page_dashboard.draw_paddock
	end	
end