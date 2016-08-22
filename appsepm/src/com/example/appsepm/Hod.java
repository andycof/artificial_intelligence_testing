package com.example.appsepm;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class Hod extends Activity implements View.OnClickListener{
	
	Button belective;
	Button bCoreCourse;
	private Button button;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_hod);
		belective = (Button) findViewById(R.id.bElective);
		bCoreCourse = (Button) findViewById(R.id.bCoreCourse);
		belective.setOnClickListener(this);
		bCoreCourse.setOnClickListener(this);
button = (Button) findViewById(R.id.bnotiftfaculty);
		
		button.setOnClickListener(new OnClickListener() {
			 
			  @Override
			  public void onClick(View arg0) {
				  
			     Toast.makeText(getApplicationContext(), 
                               "Faculties are Notified", Toast.LENGTH_LONG).show();

			  }
		});
		return;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.	
		getMenuInflater().inflate(R.menu.hod, menu);

		return true;
	}
	

	public void onClick(View v){

		switch(v.getId()){
		 case R.id.bCoreCourse:
		    Intent intent = new Intent(getApplicationContext(),CoreCourses.class);
		                startActivity(intent);   
		break;
		case R.id.bElective:
		    Intent intent1 = new Intent(getApplicationContext(), Electives.class);
		        startActivity(intent1);  
		break;
		}


}
}
