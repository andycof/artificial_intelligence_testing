package com.example.appsepm;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.view.View;
import android.view.View.OnClickListener;

public class MainActivity extends Activity {

	Button button;
	EditText txtv, pass;
	String username, password;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		addListenerOnButton();
	}

	public void addListenerOnButton() {

		final Context context = this;

		
		txtv = (EditText) findViewById(R.id.etUserName);
		pass = (EditText) findViewById(R.id.etPassword);
		button = (Button) findViewById(R.id.b1);
		button.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				
				
				username = txtv.getText().toString();
				password = pass.getText().toString();

				if (username.equals("RajeevSaxena") && password.equals("dean")) {
					Intent intent1 = new Intent(context, Dean.class);
					startActivity(intent1);

				}
				else if (username.equals("SubratDash") && password.equals("hod"))
				{
					Intent intent2 = new Intent(context, Hod.class);
					startActivity(intent2);

					
				}
				else if (username.equals("RaviGorthi") && password.equals("faculty"))
				{
					Intent intent3 = new Intent(context, Faculty.class);
					startActivity(intent3);

					
				}
			}

		});

	}

}