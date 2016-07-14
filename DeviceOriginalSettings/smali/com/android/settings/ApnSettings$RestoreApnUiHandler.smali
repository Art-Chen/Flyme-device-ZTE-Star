.class Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/ApnSettings;Lcom/flyme/DeviceOriginalSettings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/ApnSettings;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/ApnSettings$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 372
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 373
    # setter for: Lcom/flyme/DeviceOriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->access$102(Z)Z

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->access$200(Lcom/flyme/DeviceOriginalSettings/ApnSettings;)V

    .line 377
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 378
    # setter for: Lcom/flyme/DeviceOriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->access$102(Z)Z

    .line 379
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->removeDialog(I)V

    .line 380
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
