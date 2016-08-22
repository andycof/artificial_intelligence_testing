package com.example.appsepm;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;

public class ElectivesFaculty extends Activity 
{private Button button;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_electives_faculty);
		button = (Button) findViewById(R.id.bapply);
		button.setOnClickListener(new OnClickListener()
		{
			 
		 @Override
		  public void onClick(View arg0) {
			  
		     Toast.makeText(getApplicationContext(), 
                          "Applied For Electives", Toast.LENGTH_LONG).show();

		  }
	});
	return;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.electives_faculty, menu);
		return true;
	}

}