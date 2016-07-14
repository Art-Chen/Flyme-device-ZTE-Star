.class public Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreComponentProtectedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    .line 252
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    .line 253
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p1, [Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->doInBackground([Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;)Ljava/lang/Void;
    .locals 7
    .param p1, "args"    # [Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;

    .prologue
    .line 274
    move-object v1, p1

    .local v1, "arr$":[Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 275
    .local v0, "appList":Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;->componentNames:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;->state:Z

    invoke-static {v4, v5, v6}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ProtectedAppsReceiver;->updateProtectedAppComponentsAndNotify(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "appList":Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppProtectList;
    :cond_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;

    # invokes: Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;->access$300(Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;)V

    .line 280
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;->access$000(Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;)Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 259
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 261
    return-void
.end method
