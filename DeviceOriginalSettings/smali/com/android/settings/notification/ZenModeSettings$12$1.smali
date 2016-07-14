.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12$1;->this$1:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12$1;->this$1:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->refreshAutomationSection()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    .line 360
    return-void
.end method
