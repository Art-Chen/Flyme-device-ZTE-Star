.class Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 632
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->finish()V

    .line 633
    return-void
.end method
