module MCollective
  module Agent
    class Git<RPC::Agent

      action "cln" do
        reply[:status] = run("git clone #{request[:repo]} #{request[:path]}", :stdout => :out, :stderr => :msg)
      end

      action "pll" do
        reply[:status] = run("cd #{request[:path]}; git pull #{request[:remote]} #{request[:ref]}", :stdout => :out, :stderr => :msg)
      end

      action "rst" do
        reply[:status] = run("cd #{request[:path]}; git reset --hard", :stdout => :out, :stderr => :msg)
      end

      action "chckt" do
        reply[:status] = run("cd #{request[:path]}; git checkout #{request[:ref]}", :stdout => :out, :stderr => :msg)
      end

    end
  end
end
