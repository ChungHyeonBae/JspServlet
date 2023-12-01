package solo;

import java.util.HashMap;
import java.util.List;

import common.MybatisConnection;

public class SoloDAO extends MybatisConnection{

	public SoloDAO() {
		super(DataResource.HR);
	}
	
	public List<SoloVO> select(){
		return sql.selectList("hr.select" );
	}
	

}