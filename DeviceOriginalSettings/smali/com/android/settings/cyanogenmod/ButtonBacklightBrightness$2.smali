.class Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->access$100(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->access$100(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->access$200(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$2;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->access$200(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->reset()V

    .line 146
    :cond_1
    return-void
.end method