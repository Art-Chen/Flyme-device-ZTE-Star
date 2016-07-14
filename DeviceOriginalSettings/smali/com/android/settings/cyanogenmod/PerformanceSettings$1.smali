.class Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings$1;
.super Ljava/lang/Object;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PerformanceSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dragons_awesome"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method
