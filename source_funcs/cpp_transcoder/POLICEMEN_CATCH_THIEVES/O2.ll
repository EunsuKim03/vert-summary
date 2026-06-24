; ModuleID = 'benchmark/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_POLICEMEN_CATCH_THIEVES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %22

7:                                                ; preds = %130, %3
  %8 = phi i32* [ null, %3 ], [ %131, %130 ]
  %9 = phi i32* [ null, %3 ], [ %133, %130 ]
  %10 = phi i32* [ null, %3 ], [ %134, %130 ]
  %11 = phi i32* [ null, %3 ], [ %136, %130 ]
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 2
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %170, label %17

17:                                               ; preds = %7
  %18 = ptrtoint i32* %10 to i64
  %19 = ptrtoint i32* %9 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 2
  br label %139

22:                                               ; preds = %5, %130
  %23 = phi i64 [ 0, %5 ], [ %137, %130 ]
  %24 = phi i32* [ null, %5 ], [ %136, %130 ]
  %25 = phi i32* [ null, %5 ], [ %135, %130 ]
  %26 = phi i32* [ null, %5 ], [ %134, %130 ]
  %27 = phi i32* [ null, %5 ], [ %133, %130 ]
  %28 = phi i32* [ null, %5 ], [ %132, %130 ]
  %29 = phi i32* [ null, %5 ], [ %131, %130 ]
  %30 = getelementptr inbounds i8, i8* %0, i64 %23
  %31 = load i8, i8* %30, align 1, !tbaa !5
  switch i8 %31, label %130 [
    i8 80, label %32
    i8 84, label %88
  ]

32:                                               ; preds = %22
  %33 = icmp eq i32* %26, %25
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = trunc i64 %23 to i32
  store i32 %35, i32* %26, align 4, !tbaa !8
  %36 = getelementptr inbounds i32, i32* %26, i64 1
  br label %130

37:                                               ; preds = %32
  %38 = ptrtoint i32* %25 to i64
  %39 = ptrtoint i32* %27 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 2
  %42 = icmp eq i64 %40, 9223372036854775804
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9
          to label %44 unwind label %76

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %37
  %46 = icmp eq i64 %40, 0
  %47 = select i1 %46, i64 1, i64 %41
  %48 = add nsw i64 %47, %41
  %49 = icmp ult i64 %48, %41
  %50 = icmp ugt i64 %48, 2305843009213693951
  %51 = or i1 %49, %50
  %52 = select i1 %51, i64 2305843009213693951, i64 %48
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = shl nuw nsw i64 %52, 2
  %56 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %55) #10
          to label %57 unwind label %74

57:                                               ; preds = %54
  %58 = bitcast i8* %56 to i32*
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32* [ %58, %57 ], [ null, %45 ]
  %61 = getelementptr inbounds i32, i32* %60, i64 %41
  %62 = trunc i64 %23 to i32
  store i32 %62, i32* %61, align 4, !tbaa !8
  %63 = icmp sgt i64 %40, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = bitcast i32* %60 to i8*
  %66 = bitcast i32* %27 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 %40, i1 false) #11
  br label %67

67:                                               ; preds = %59, %64
  %68 = getelementptr inbounds i32, i32* %61, i64 1
  %69 = icmp eq i32* %27, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = bitcast i32* %27 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %71) #11
  br label %72

72:                                               ; preds = %70, %67
  %73 = getelementptr inbounds i32, i32* %60, i64 %52
  br label %130

74:                                               ; preds = %54, %110
  %75 = landingpad { i8*, i32 }
          cleanup
  br label %78

76:                                               ; preds = %43, %99
  %77 = landingpad { i8*, i32 }
          cleanup
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi { i8*, i32 } [ %75, %74 ], [ %77, %76 ]
  %80 = icmp eq i32* %27, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = bitcast i32* %27 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %82) #11
  br label %83

83:                                               ; preds = %78, %81
  %84 = icmp eq i32* %24, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = bitcast i32* %24 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %86) #11
  br label %87

87:                                               ; preds = %83, %85
  resume { i8*, i32 } %79

88:                                               ; preds = %22
  %89 = icmp eq i32* %29, %28
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = trunc i64 %23 to i32
  store i32 %91, i32* %29, align 4, !tbaa !8
  %92 = getelementptr inbounds i32, i32* %29, i64 1
  br label %130

93:                                               ; preds = %88
  %94 = ptrtoint i32* %28 to i64
  %95 = ptrtoint i32* %24 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 2
  %98 = icmp eq i64 %96, 9223372036854775804
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9
          to label %100 unwind label %76

100:                                              ; preds = %99
  unreachable

101:                                              ; preds = %93
  %102 = icmp eq i64 %96, 0
  %103 = select i1 %102, i64 1, i64 %97
  %104 = add nsw i64 %103, %97
  %105 = icmp ult i64 %104, %97
  %106 = icmp ugt i64 %104, 2305843009213693951
  %107 = or i1 %105, %106
  %108 = select i1 %107, i64 2305843009213693951, i64 %104
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = shl nuw nsw i64 %108, 2
  %112 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %111) #10
          to label %113 unwind label %74

113:                                              ; preds = %110
  %114 = bitcast i8* %112 to i32*
  br label %115

115:                                              ; preds = %113, %101
  %116 = phi i32* [ %114, %113 ], [ null, %101 ]
  %117 = getelementptr inbounds i32, i32* %116, i64 %97
  %118 = trunc i64 %23 to i32
  store i32 %118, i32* %117, align 4, !tbaa !8
  %119 = icmp sgt i64 %96, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = bitcast i32* %116 to i8*
  %122 = bitcast i32* %24 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 %96, i1 false) #11
  br label %123

123:                                              ; preds = %115, %120
  %124 = getelementptr inbounds i32, i32* %117, i64 1
  %125 = icmp eq i32* %24, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = bitcast i32* %24 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %127) #11
  br label %128

128:                                              ; preds = %126, %123
  %129 = getelementptr inbounds i32, i32* %116, i64 %108
  br label %130

130:                                              ; preds = %128, %90, %72, %34, %22
  %131 = phi i32* [ %29, %22 ], [ %29, %34 ], [ %29, %72 ], [ %124, %128 ], [ %92, %90 ]
  %132 = phi i32* [ %28, %22 ], [ %28, %34 ], [ %28, %72 ], [ %129, %128 ], [ %28, %90 ]
  %133 = phi i32* [ %27, %22 ], [ %27, %34 ], [ %60, %72 ], [ %27, %128 ], [ %27, %90 ]
  %134 = phi i32* [ %26, %22 ], [ %36, %34 ], [ %68, %72 ], [ %26, %128 ], [ %26, %90 ]
  %135 = phi i32* [ %25, %22 ], [ %25, %34 ], [ %73, %72 ], [ %25, %128 ], [ %25, %90 ]
  %136 = phi i32* [ %24, %22 ], [ %24, %34 ], [ %24, %72 ], [ %116, %128 ], [ %24, %90 ]
  %137 = add nuw nsw i64 %23, 1
  %138 = icmp eq i64 %137, %6
  br i1 %138, label %7, label %22, !llvm.loop !10

139:                                              ; preds = %17, %164
  %140 = phi i64 [ 0, %17 ], [ %168, %164 ]
  %141 = phi i32 [ 0, %17 ], [ %167, %164 ]
  %142 = phi i32 [ 0, %17 ], [ %166, %164 ]
  %143 = phi i32 [ 0, %17 ], [ %165, %164 ]
  %144 = sext i32 %141 to i64
  %145 = icmp ugt i64 %21, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %139
  %147 = getelementptr inbounds i32, i32* %11, i64 %140
  %148 = load i32, i32* %147, align 4, !tbaa !8
  %149 = getelementptr inbounds i32, i32* %9, i64 %144
  %150 = load i32, i32* %149, align 4, !tbaa !8
  %151 = sub nsw i32 %148, %150
  %152 = tail call i32 @llvm.abs.i32(i32 %151, i1 true)
  %153 = icmp sgt i32 %152, %2
  br i1 %153, label %158, label %154

154:                                              ; preds = %146
  %155 = add nsw i32 %143, 1
  %156 = add nsw i32 %142, 1
  %157 = add nsw i32 %141, 1
  br label %164

158:                                              ; preds = %146
  %159 = icmp slt i32 %148, %150
  br i1 %159, label %160, label %162

160:                                              ; preds = %158
  %161 = add nsw i32 %142, 1
  br label %164

162:                                              ; preds = %158
  %163 = add nsw i32 %141, 1
  br label %164

164:                                              ; preds = %160, %162, %154
  %165 = phi i32 [ %155, %154 ], [ %143, %160 ], [ %143, %162 ]
  %166 = phi i32 [ %156, %154 ], [ %161, %160 ], [ %142, %162 ]
  %167 = phi i32 [ %157, %154 ], [ %141, %160 ], [ %163, %162 ]
  %168 = sext i32 %166 to i64
  %169 = icmp ugt i64 %15, %168
  br i1 %169, label %139, label %173, !llvm.loop !12

170:                                              ; preds = %139, %7
  %171 = phi i32 [ 0, %7 ], [ %143, %139 ]
  %172 = icmp eq i32* %9, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %164, %170
  %174 = phi i32 [ %171, %170 ], [ %165, %164 ]
  %175 = bitcast i32* %9 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %175) #11
  br label %176

176:                                              ; preds = %170, %173
  %177 = phi i32 [ %171, %170 ], [ %174, %173 ]
  %178 = icmp eq i32* %11, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = bitcast i32* %11 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %180) #11
  br label %181

181:                                              ; preds = %176, %179
  ret i32 %177
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_POLICEMEN_CATCH_THIEVES_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { noreturn }
attributes #10 = { allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
