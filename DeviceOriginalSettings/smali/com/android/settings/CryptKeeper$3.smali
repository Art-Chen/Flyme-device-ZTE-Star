.class Lcom/flyme/DeviceOriginalSettings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$3;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$3;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->access$1000(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)V

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$3;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->notifyUser()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->access$1100(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
