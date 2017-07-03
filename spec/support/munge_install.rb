shared_context "munge::install" do

  it do
    should contain_package('munge').only_with({
      :ensure   => 'present',
      :name     => 'munge',
    })
  end

  it { should_not contain_package('munge-devel') }

  context 'when install_dev => true' do
    let(:params) {{ :install_dev => true }}

    it do
      should contain_package('munge-devel').only_with({
        :ensure   => 'present',
        :name     => 'munge-devel',
      })
    end
  end
end
