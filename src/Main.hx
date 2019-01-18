package;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.Alert_AlertType;

class Main extends Application implements EventHandler<ActionEvent> {
	public static function main () Application.launch(null);
	
	@:overload
	override function start (primaryStage:Stage):Void {
		primaryStage.setTitle("JavaFX ❤️ Haxe");
		final btn:Button = new Button();
		btn.setText("Pew-pew-pew!");
		btn.setOnAction(this);

		final root:StackPane = new StackPane();
		root.getChildren().add(btn);
		primaryStage.setScene(new Scene(root, 340, 180));
		primaryStage.show();
	}

	public function handle (event:ActionEvent):Void {
		final alert:Alert = new Alert(Alert_AlertType.INFORMATION);
		alert.setTitle("Haxe is great!");
		alert.setContentText("Isn't it?");
		alert.showAndWait();
	}
}
