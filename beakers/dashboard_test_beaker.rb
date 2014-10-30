describe "dashboard_test", :depth => 'shallow' do 
	let(:page_dashboard) { @formula_lab.using('dashboard_page').with_first('expired').mix }

	it 'with expired creadentials' do
		page_dashboard.draw_paddock
	end	
end