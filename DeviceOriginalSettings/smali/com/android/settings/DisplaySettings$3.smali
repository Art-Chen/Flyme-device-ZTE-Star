.class Lcom/flyme/DeviceOriginalSettings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->access$200(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;->click()V

    .line 415
    return-void
.end method
