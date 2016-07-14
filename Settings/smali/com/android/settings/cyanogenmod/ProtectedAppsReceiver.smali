.class public Lcom/android/settings/cyanogenmod/ProtectedAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProtectedAppsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static notifyProtectedChanged(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cyanogenmod.intent.action.PROTECTED_COMPONENT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cyanogenmod.intent.action.PACKAGE_PROTECTED_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v1, "cyanogenmod.intent.action.PACKAGE_PROTECTED_COMPONENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    const-string v1, "cyanogenmod.permission.PROTECTED_APP"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static updateProtectedAppComponents(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 50
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 52
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v3, v0, p2}, Landroid/content/pm/PackageManager;->setComponentProtectedSetting(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "nsm":Ljava/lang/NoSuchMethodError;
    const-string v4, "ProtectedAppsReceiver"

    const-string v5, "Unable to protected app via PackageManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "nsm":Ljava/lang/NoSuchMethodError;
    :cond_0
    return-void
.end method

.method public static updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-static {p0, p1, p2}, Lcom/android/settings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponents(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/settings/cyanogenmod/ProtectedAppsReceiver;->updateSettingsSecure(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/settings/cyanogenmod/ProtectedAppsReceiver;->notifyProtectedChanged(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 45
    return-void
.end method

.method public static updateSettingsSecure(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 62
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v10, "protected_components"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "hiddenComponents":Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v7, "newComponentList":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_1

    .line 67
    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 68
    .local v2, "flattened":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 69
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v2    # "flattened":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 79
    .local v9, "update":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v3, "flattenedList":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 82
    .restart local v1    # "cmp":Landroid/content/ComponentName;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 83
    const-string v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 75
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "flattenedList":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "update":Z
    :cond_3
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_1

    .line 87
    .restart local v3    # "flattenedList":Ljava/lang/StringBuilder;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "update":Z
    :cond_4
    const-string v10, "protected_components"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .end local v3    # "flattenedList":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string v2, "cyanogenmod.intent.action.PACKAGE_PROTECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "cyanogenmod.intent.action.PACKAGE_PROTECTED_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    .local v1, "protect":Z
    const-string v2, "cyanogenmod.intent.action.PACKAGE_PROTECTED_COMPONENTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/android/settings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 38
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v1    # "protect":Z
    :cond_0
    return-void
.end method
