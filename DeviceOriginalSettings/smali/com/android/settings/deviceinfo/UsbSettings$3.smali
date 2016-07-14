.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 305
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    return-void
.end method
