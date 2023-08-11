package mosl.superfina.com

import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import com.clevertap.android.sdk.CleverTapAPI
import com.fluttercandies.flutter_image_compress.logger.log
import com.xiaomi.mipush.sdk.MiPushClient
import io.flutter.embedding.android.FlutterFragmentActivity


class MainActivity: FlutterFragmentActivity() {


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        super.onCreate(savedInstanceState, persistentState);


        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val cleverTapAPI = CleverTapAPI.getDefaultInstance(this)
            cleverTapAPI?.pushNotificationClickedEvent(intent.extras)


        MiPushClient.registerPush(this, "2882303761521858773", "5772185870773")
        val xiaomiToken = MiPushClient.getRegId(this)
        val xiaomiRegion = MiPushClient.getAppRegion(this);

        if (cleverTapAPI != null)
        {
            cleverTapAPI.pushXiaomiRegistrationId(xiaomiToken, xiaomiRegion, true)
            log("success of pushXiaomiRegistrationId");
        }
        else
        {

        }
        }

    }


}
