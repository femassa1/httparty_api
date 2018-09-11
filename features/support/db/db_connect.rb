class DB_connect
  def initialize
    @oci = OCI8.new('svc_teste_pool_cnx',
                    'RMGUU583KA',
                    '(DESCRIPTION=(ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = brlspldgdb01.dasa.net)(PORT = 10010)))(CONNECT_DATA=(SID=glidev01)))')
  end

  def select(query)
    @oci.exec(query) do |record|
      @valor = record
    end
    @valor
  end
end

