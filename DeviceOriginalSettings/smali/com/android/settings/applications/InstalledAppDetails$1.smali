.class Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    # invokes: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$000(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->mState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$200(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$100(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$1;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    # invokes: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$300(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method