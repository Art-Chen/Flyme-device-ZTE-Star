.class Lcom/flyme/DeviceOriginalSettings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/MediaFormat;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/MediaFormat$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/MediaFormat$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MediaFormat;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 98
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/MediaFormat$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MediaFormat;

    invoke-virtual {v2, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/MediaFormat$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MediaFormat;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->finish()V

    goto :goto_0
.end method
