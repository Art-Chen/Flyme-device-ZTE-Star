.class Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 260
    .local v0, "info":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;->access$000(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationGroup;->addPackage(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;->updatePackages()V
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;->access$100(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;)V

    .line 262
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 263
    return-void
.end method
