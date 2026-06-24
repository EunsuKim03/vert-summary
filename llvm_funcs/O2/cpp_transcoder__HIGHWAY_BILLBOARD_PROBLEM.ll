; ModuleID = 'llvm/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = add i32 %0, 1
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = xor i32 %4, -1
  %14 = sext i32 %4 to i64
  br label %19

15:                                               ; preds = %67, %5
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds i32, i32* %8, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  ret i32 %18

19:                                               ; preds = %12, %67
  %20 = phi i64 [ 1, %12 ], [ %69, %67 ]
  %21 = phi i32 [ 0, %12 ], [ %68, %67 ]
  %22 = icmp slt i32 %21, %3
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i32, i32* %1, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %20, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = add nsw i64 %20, -1
  %31 = getelementptr inbounds i32, i32* %8, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %32, i32* %33, align 4, !tbaa !5
  br label %67

34:                                               ; preds = %23
  %35 = icmp sgt i64 %20, %14
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = add nsw i64 %20, -1
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  %39 = getelementptr inbounds i32, i32* %2, i64 %24
  %40 = load i32, i32* %38, align 4
  %41 = load i32, i32* %39, align 4
  %42 = icmp slt i32 %40, %41
  %43 = select i1 %42, i32 %41, i32 %40
  br label %58

44:                                               ; preds = %34
  %45 = trunc i64 %20 to i32
  %46 = add i32 %45, %13
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %8, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %2, i64 %24
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %49
  %53 = add nsw i64 %20, -1
  %54 = getelementptr inbounds i32, i32* %8, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = icmp slt i32 %52, %55
  %57 = select i1 %56, i32 %55, i32 %52
  br label %58

58:                                               ; preds = %44, %36
  %59 = phi i32 [ %57, %44 ], [ %43, %36 ]
  %60 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %59, i32* %60, align 4
  %61 = add nsw i32 %21, 1
  br label %67

62:                                               ; preds = %19
  %63 = add nsw i64 %20, -1
  %64 = getelementptr inbounds i32, i32* %8, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %65, i32* %66, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %62, %58, %29
  %68 = phi i32 [ %21, %29 ], [ %61, %58 ], [ %21, %62 ]
  %69 = add nuw nsw i64 %20, 1
  %70 = icmp eq i64 %69, %7
  br i1 %70, label %15, label %19, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
