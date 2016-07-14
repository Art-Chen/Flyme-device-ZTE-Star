.class Lcom/android/settings/SoundSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/settings/SoundSettings$Receiver;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SoundSettings;
    .param p2, "x1"    # Lcom/android/settings/SoundSettings$1;

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings$Receiver;-><init>(Lcom/android/settings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 890
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/android/settings/SoundSettings$Receiver;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/SoundSettings$H;->sendEmptyMessage(I)Z

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/settings/SoundSettings$Receiver;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/SoundSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 876
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 886
    :goto_0
    return-void

    .line 877
    :cond_0
    if-eqz p1, :cond_1

    .line 878
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 879
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/android/settings/SoundSettings$Receiver;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$1200(Lcom/android/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/SoundSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings$Receiver;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$1200(Lcom/android/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
