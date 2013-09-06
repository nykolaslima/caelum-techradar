package app.controllers;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class RadarController {

	private Result result;

	public RadarController(Result result) {
		this.result = result;
	}
	
	@Get("/")
	public void radar() {
		result.redirectTo(this).radarSet2013();
	}
	
	@Get({"/setembro/2013", "/1"})
	public void radarSet2013() {
	}
}
