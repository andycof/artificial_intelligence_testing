package com.example.appsepm;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Faculty extends Activity implements OnClickListener{
	Button belective;
	Button bCoreCourse;
	Button baddcourse;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_faculty);
		belective = (Button) findViewById(R.id.bElectives1);
		bCoreCourse = (Button) findViewById(R.id.bCoreCourses1);
		baddcourse = (Button) findViewById(R.id.baddcourse);
		belective.setOnClickListener(this);
		bCoreCourse.setOnClickListener(this);
		baddcourse.setOnClickListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.faculty, menu);
		return true;
	}

	public void onClick(View v){

		switch(v.getId()){
		 case R.id.bCoreCourses1:
		    Intent intent = new Intent(getApplicationContext(),FacultyCoreCourses.class);
		                startActivity(intent);   
		break;
		case R.id.bElectives1:
		    Intent intent1 = new Intent(getApplicationContext(), ElectivesFaculty.class);
		        startActivity(intent1);  
		break;
		case R.id.baddcourse:
		    Intent intent2 = new Intent(getApplicationContext(), AddElectives.class);
		        startActivity(intent2);  
		break;
		
		
		}


}
	
	
}

