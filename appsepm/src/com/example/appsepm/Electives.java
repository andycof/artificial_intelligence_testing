package com.example.appsepm;  
 import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

 public class Electives extends Activity {  
	 
	 private Button button;
     
	 protected void onCreate(Bundle savedInstanceState) {
			super.onCreate(savedInstanceState);
			setContentView(R.layout.electives);
			button = (Button) findViewById(R.id.button112);
			
			button.setOnClickListener(new OnClickListener() {
				 
				  @Override
				  public void onClick(View arg0) {
					  
				     Toast.makeText(getApplicationContext(), 
	                               "Electives Approved", Toast.LENGTH_LONG).show();

				  }
			});
			
		}
	 
 }  
