.class final Lcom/flyme/DeviceOriginalSettings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    const v0, 0x7f09039e

    goto :goto_0

    .line 50
    :pswitch_1
    const v0, 0x7f0903a5

    goto :goto_0

    .line 52
    :pswitch_2
    const v0, 0x7f0903a3

    goto :goto_0

    .line 54
    :pswitch_3
    const v0, 0x7f0903a4

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .prologue
    const v2, 0x104000a

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 79
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 98
    .local v1, "manager":Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_0

    .line 99
    const-string v3, "Utils"

    const-string v4, "Error, Can\'t get LocalBluetoothManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0904d0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "iconResId"    # I
    .param p5, "enabled"    # Z

    .prologue
    .line 119
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "data":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    iput-object p1, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 121
    iput-object p2, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 122
    iput-object p3, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 123
    iput p4, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->iconResId:I

    .line 124
    iput-boolean p5, v0, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->enabled:Z

    .line 126
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 127
    return-void
.end method
