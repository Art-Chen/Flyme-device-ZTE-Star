.class public Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1808
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "parent"    # Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
    .param p1, "app"    # Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1814
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1815
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1817
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1818
    .local v1, "fragment":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1819
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1820
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1821
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1822
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1823
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090acc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1825
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1830
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1831
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    .line 1832
    .local v0, "target":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;

    # setter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2802(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;)Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;

    .line 1833
    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$100(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1834
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1838
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1839
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    .line 1840
    .local v0, "target":Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2802(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;)Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$AppItem;

    .line 1841
    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$100(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1842
    return-void
.end method
