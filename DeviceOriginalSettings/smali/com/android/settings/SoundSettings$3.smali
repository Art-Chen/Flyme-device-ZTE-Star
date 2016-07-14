.class Lcom/flyme/DeviceOriginalSettings/SoundSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadsetReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->headsetState:I
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$802(Lcom/flyme/DeviceOriginalSettings/SoundSettings;I)I

    .line 213
    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadsetReceiver headsetState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->headsetState:I
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$800(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V

    .line 220
    :cond_0
    return-void
.end method
