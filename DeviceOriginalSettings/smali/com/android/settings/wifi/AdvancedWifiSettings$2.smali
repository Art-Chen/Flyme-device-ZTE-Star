.class Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings$2;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;I)V

    .line 183
    return v1
.end method
