component extends="mxunit.framework.Spec" {

	request.specFixtureBeforeAllCount = 0;
	request.specFixtureBeforeCount = 0;
	request.specFixtureAfterCount = 0;
	request.specFixtureAfterAllCount = 0;
	
	function beforeAll(){
		request.specFixtureBeforeAllCount++;
	}
	
	function before(){
		request.specFixtureBeforeCount++;
	}
	
	function after(arguments){
		request.specFixtureAfterCount++;
	}

	function afterAll(){
		request.specFixtureAfterAllCount++;
	}

	describe("This Fixture", function(){
		it( "should have a single spec for This Fixture", function(){
			expect("one").toEqual("one");
		});
	});
	
	describe("This Fixture should have two specs for the second description", function(){
		
		it( "I am the first", function(){
			expect("two").toEqual("two");
		});
		
		it( "I am the second", function(){
			expect("two").toEqual("two");
		});

	});
	
}  