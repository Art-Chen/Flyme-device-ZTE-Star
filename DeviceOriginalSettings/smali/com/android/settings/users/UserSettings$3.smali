.class Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->loadProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 319
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/UserSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->access$700(Lcom/flyme/DeviceOriginalSettings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 328
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/UserSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v1, v0}, Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->access$800(Lcom/flyme/DeviceOriginalSettings/users/UserSettings;Landroid/content/pm/UserInfo;)V

    .line 331
    :cond_1
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 319
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/UserSettings$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/UserSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/users/UserSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/users/UserSettings;Ljava/lang/String;)V

    .line 323
    return-void
.end method