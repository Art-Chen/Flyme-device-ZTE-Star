.class Lcom/flyme/DeviceOriginalSettings/notification/SettingPref$2;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->init(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref$2;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref$2;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref$2;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
