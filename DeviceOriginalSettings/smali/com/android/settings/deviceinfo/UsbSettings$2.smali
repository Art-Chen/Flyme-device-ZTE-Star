.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    .local v0, "isExternalPath":Z
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090265

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "shared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090266

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
