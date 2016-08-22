package com.example.appsepm;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

public class Dean extends Activity{

	private Button button;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_dean); 
		
button = (Button) findViewById(R.id.btnBegin);
		
		button.setOnClickListener(new OnClickListener() {
			 
			  @Override
			  public void onClick(View arg0) {
				  
			     Toast.makeText(getApplicationContext(), 
                               "HOD is Notified", Toast.LENGTH_LONG).show();

			  }
		});
		return;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.dean, menu);
		return true;
	}

}
